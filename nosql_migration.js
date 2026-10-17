use crowdfunding;

db.createCollection('utilizatori');
db.createCollection('proiecte');
db.createCollection('donatii');
db.createCollection('sponsorizari');

db.utilizatori.insertOne({
  nume: "Popescu Ion",
  email: "ion.popescu@email.com",
  data_inregistrare: new Date("2025-01-10")
});

db.donatii.insertMany([
  { id_utilizator: 1, id_proiect: 1, suma: 500, data: new Date() },
  { id_utilizator: 2, id_proiect: 1, suma: 200, data: new Date() }
]);

db.proiecte.updateOne(
  { _id: ObjectId("650000000000000000000001") },
  { $set: { stare: "INCHEIAT" } }
);

db.proiecte.updateMany(
  { id_fondator: ObjectId("650000000000000000000002"), stare: "ACTIV" },
  { $inc: { obiectiv_financiar: 1000 } }
);

db.donatii.deleteOne({ _id: ObjectId("650000000000000000000003") });

db.donatii.deleteMany({ suma: { $lt: 100 } });

db.proiecte.find({ stare: 'ACTIV' });

db.donatii.find({ suma: { $gt: 200 } });

db.proiecte.find({
  categorie: 'Sănătate și Tratamente',
  obiectiv_financiar: { $gt: 30000 }
});

db.donatii.find({ id_utilizator: { $in: [1, 2] } });

db.donatii.find().sort({ suma: -1 }).limit(3);

db.proiecte.find({ stare: 'ACTIV' }).sort({ titlu: 1 });

db.donatii.aggregate([
  { $group: { _id: '$id_proiect', total: { $sum: '$suma' } } },
  { $sort: { total: -1 } }
]);
```[cite: 3]