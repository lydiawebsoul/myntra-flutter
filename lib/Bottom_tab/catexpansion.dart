import 'package:flutter/material.dart';

class CategoryExpansionTile extends StatelessWidget {
  const CategoryExpansionTile({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => EntryItem(data[index]),
      itemCount: data.length,
    );
  }
}

class Entry {
  const Entry(this.title, [this.children = const <Entry>[]]);
  final String title;
  final List<Entry> children;
}

const List<Entry> data = <Entry>[
  Entry(
    'Spring Summer 2021',
    <Entry>[
      Entry(
        'Men',
        <Entry>[Entry('Shirts'), Entry('Pants'), Entry('Footwear')],
      ),
      Entry("Night wear"),
      Entry('Party wear'),
    ],
  ),
  Entry(
    'Women',
    <Entry>[
      Entry('Tops'),
      Entry("Skrits"),
    ],
  ),
];

class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);
  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}
