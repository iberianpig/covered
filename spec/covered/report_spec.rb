# Copyright, 2018, by Samuel G. D. Williams. <http://www.codeotaku.com>
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require 'covered/report'
require 'covered/files'

RSpec.describe Covered::Report do
	let(:files) {Covered::Files.new}
	let(:report) {Covered::Report.new(files)}
	
	let(:first_line) {File.readlines(__FILE__).first}
	let(:io) {StringIO.new}
	
	it "can generate source code listing" do
		files.mark(__FILE__, 24)
		files.paths[__FILE__][25] = 0
		
		report.print_summary(io)
		
		expect(io.string).to include("RSpec.describe Covered::Report do")
	end
	
	it "can generate partial summary" do
		files.mark(__FILE__, 45)
		files.paths[__FILE__][46] = 0
		
		report.print_partial_summary(io)
		
		expect(io.string).to_not include(first_line)
		expect(io.string).to include("What are some of the best recursion jokes?")
	end
end