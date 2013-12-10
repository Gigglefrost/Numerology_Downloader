#use warnings;

#use strict;

#use HTTP::Server::Simple;
#my $server = HTTP::Server::Simple->new();
#$server->run();



require 'sinatra'


=begin

$accumulator=0

#words=IO.readlines("numerology_chase.txt")

words=open("code.txt",&:read).split("")

#File.open("numerology_chase.txt").each_line do |line|

for i in words
$accumulator += i.to_i
end

accumulator_data = $accumulator.to_s


numerology=accumulator_data.split("")
$i=0
for i in numerology
	$i+=i.to_i
end

puts "And the number is: #{$i}"

=end

	

	


#$a.extend(numerology)


before do
	content_type :text
	require 'mechanize'	
end


def numerology(url)
		agent=Mechanize.new
		read = agent.get(url)
		save_as = read.save_as("webpage_#{Random.rand(0..(10**100+10*100)).to_s}_.html")		
		return save_as			
end

#$page_counter=0
get '/url_num/*' do
	
	
	
	a=numerology("#{params[:splat].shift}".sub!(/\//,'//'))
	
	file_name=a
	

	$accumulator=0

	#words=IO.readlines("numerology_chase.txt")

	words=open("#{file_name}",&:read).split("")

	#File.open("numerology_chase.txt").each_line do |line|

	for i in words
		$accumulator += i.to_i
	end

	accumulator_data = $accumulator.to_s


	numerology=accumulator_data.split("")
	$i=0
	for i in numerology
		$i+=i.to_i
	end

	"And the number is: #{$i}"
	
	#numerology_proc=$agent.get("#{params[:splat]}")
	#"You passed in #{numerology_proc.inner_html}"
end
=begin
set :views, File.dirname(__FILE__) + '/public' #set views to ./html (current directory/html)
def load_pictures
	Dir.glob("#{File.dirname(__FILE__)}/*.{jpg,JPG,gif,GIF,PNG}")
end

get '/' do
	
	@pictures = load_pictures
	
	erb :index
end
=end
