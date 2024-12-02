{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "obj_inimigo_padrao",
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":10,"eventType":2,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":11,"eventType":2,"isDnD":false,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","collisionObjectId":null,"eventNum":9,"eventType":2,"isDnD":false,},
  ],
  "managed": true,
  "overriddenProperties": [],
  "parent": {
    "name": "inimigos",
    "path": "folders/Objects/inimigos.yy",
  },
  "parentObjectId": null,
  "persistent": false,
  "physicsAngularDamping": 0.1,
  "physicsDensity": 0.5,
  "physicsFriction": 0.2,
  "physicsGroup": 1,
  "physicsKinematic": false,
  "physicsLinearDamping": 0.1,
  "physicsObject": false,
  "physicsRestitution": 0.1,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsShapePoints": [],
  "physicsStartAwake": true,
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"Peso","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":5.0,"rangeMin":1.0,"value":"2","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"HitStopTime","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":40.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"DeathHitStopTime","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":40.0,"rangeMin":0.0,"value":"15","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"HitShake","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":5.0,"rangeMin":0.0,"value":"1","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"DeathHitShake","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":5.0,"rangeMin":0.0,"value":"2","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"QuantidadeFumacaVivo","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"30","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"QuantidadeParticolaMorto","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"2","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"ParticolaMorto","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"fumaca","varType":2,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"Hp","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"100","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"HpMax","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"100","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"JeitoDeMorte","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"DistanciaAtivacao","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":true,"rangeMax":600.0,"rangeMin":30.0,"value":"102","varType":1,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"direcao","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"1","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"atingido","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"morto","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"hsp","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"vsp","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"grv","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0.2","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"ativo","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"estado","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"normal","varType":2,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"desenha_fumaca_vivo","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"desenha_fumaca_morto","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"0","varType":0,},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"dano_player","filters":[],"listItems":[],"multiselect":false,"rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"value":"10","varType":0,},
  ],
  "solid": false,
  "spriteId": null,
  "spriteMaskId": null,
  "visible": true,
}