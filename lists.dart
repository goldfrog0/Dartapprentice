void main(List<String> args) {
var desserts = ['cookies', 'cupcakes', 'donuts', 'pie'];
print(desserts);

print(desserts[1]);
final index = desserts.indexOf('pie');
final value = desserts[index];

print(index);
print(value);

desserts.add('brownies');
print(desserts);

desserts.remove('cupcakes');
print(desserts);

desserts.forEach((dessert) => print(dessert));



}
