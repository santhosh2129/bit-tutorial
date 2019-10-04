# Multiple elements value assignment, which creates an array with four elements, some numeric and some string.
@array = (25, "John", "Mary", -45.34);
print "$array[1]\n";            # John

# Direct assignment of an element with a specific index.
$array[5] = "Tom";




# Use the qw// operator which returns 
# an array of string elements made of the original string delimited by whitespace.

@array_from_text = qw/Perl is a great scripting language/;
print "$array_from_text[0]\n";   # Perl
print "$array_from_text[1]\n";   # is
print "$array_from_text[-3]\n";  # great




@month_numbers = (0..12);    # 0 1 2 3 4 5 6 7 8 9 10 11 12
print "number of month 2 is $month_numbers[2]\n"; # 2


@month_numbers = (0..12);    # 0 1 2 3 4 5 6 7 8 9 10 11 12
print "Size: ",scalar @month_numbers,"\n";
print "Index of last array element: ",$#month_numbers,"\n";

@empty = ();
print "Last element of @empty: $#array"; # -1


# 1. define initial array contents
@basket = ("Apple","Banana","Carrot");
print "1. My \@basket array is: @basket\n";
# 2. add element at the end of the array
push(@basket, "Orange");
print "2. My \@basket array is: @basket\n";
# 3. add element at the beginning of the array
unshift(@basket, "Avocado");
print "3. My \@basket array is: @basket\n";
# 4. remove element from the end of the array
pop(@basket);
print "4. My \@basket array is: @basket\n";
# 5. remove element from the beginning of the array
shift(@basket);
print "5. My \@basket array is: @basket\n";


@Months = qw/Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec/;
@winter_canada = @Months[-1,0,1];
@winter_brazil = @Months[5..7];
print "winter months in Canada are: @winter_canada\n";  # Dec Jan Feb
print "winter months in Brazil are: @winter_brazil\n";  # Jun Jul Aug

$Months = 'Jan,Feb,Mar,apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec';
@array_of_month_names = split(',' , $Months);
print "$Months\n";
print "@array_of_month_names\n";



$Months = 'Jan,Feb,Mar,apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec';
@array_of_month_names = split(',' , $Months);
$dash_delimited_monthlist = join('-' , @array_of_month_names);
$very_long_message = join(' is followed by ' , @array_of_month_names);
print "$Months\n";
print "@array_of_month_names\n";
print "$dash_delimited_monthlist\n";
print "$very_long_message\n";
