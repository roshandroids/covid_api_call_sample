class CovidDataModel {
  int? tested_positive;
  int? tested_negative;
  int? tested_total;
  int? in_isolation;
  int? quarantined;
  int? tested_rdt;
  int? pending_result;
  int? recovered;
  int? deaths;
  String? source;
  String? updated_at;
  Latest_sit_report? latest_sit_report;

  CovidDataModel(
      {this.tested_positive,
      this.tested_negative,
      this.tested_total,
      this.in_isolation,
      this.quarantined,
      this.tested_rdt,
      this.pending_result,
      this.recovered,
      this.deaths,
      this.source,
      this.updated_at,
      this.latest_sit_report});

  CovidDataModel.fromJson(Map<String, dynamic> json) {
    tested_positive = json['tested_positive'];
    tested_negative = json['tested_negative'];
    tested_total = json['tested_total'];
    in_isolation = json['in_isolation'];
    quarantined = json['quarantined'];
    tested_rdt = json['tested_rdt'];
    pending_result = json['pending_result'];
    recovered = json['recovered'];
    deaths = json['deaths'];
    source = json['source'];
    updated_at = json['updated_at'];
    latest_sit_report = json['latest_sit_report'] != null
        ? new Latest_sit_report.fromJson(json['latest_sit_report'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tested_positive'] = this.tested_positive;
    data['tested_negative'] = this.tested_negative;
    data['tested_total'] = this.tested_total;
    data['in_isolation'] = this.in_isolation;
    data['quarantined'] = this.quarantined;
    data['tested_rdt'] = this.tested_rdt;
    data['pending_result'] = this.pending_result;
    data['recovered'] = this.recovered;
    data['deaths'] = this.deaths;
    data['source'] = this.source;
    data['updated_at'] = this.updated_at;
    if (this.latest_sit_report != null) {
      data['latest_sit_report'] = this.latest_sit_report!.toJson();
    }
    return data;
  }
}

class Latest_sit_report {
  String? type;
  String? sId;
  int? no;
  String? date;
  String? url;
  String? createdAt;
  String? updated_at;
  int? iV;

  Latest_sit_report(
      {this.type,
      this.sId,
      this.no,
      this.date,
      this.url,
      this.createdAt,
      this.updated_at,
      this.iV});

  Latest_sit_report.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    sId = json['_id'];
    no = json['no'];
    date = json['date'];
    url = json['url'];
    createdAt = json['created_at'];
    updated_at = json['updated_at'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['_id'] = this.sId;
    data['no'] = this.no;
    data['date'] = this.date;
    data['url'] = this.url;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updated_at;
    data['__v'] = this.iV;
    return data;
  }
}
