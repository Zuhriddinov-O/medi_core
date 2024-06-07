class Hospitals {
  String? hospitalId;
  String? hospitalOrgId;
  String? ein;
  String? name;
  String? nameCr;
  String? streetAddress;
  String? city;
  String? state;
  String? zipCode;
  String? fipsStateAndCountyCode;
  String? hospitalBedCount;
  String? chrchAfflF;
  String? urbanLocationF;
  String? childrenHospitalF;
  String? membCouncTeachHospsF;
  String? medicareProviderNumber;
  String? county;
  String? hospitalBedSize;
  String? updatedDt;

  Hospitals(
      {this.hospitalId,
        this.hospitalOrgId,
        this.ein,
        this.name,
        this.nameCr,
        this.streetAddress,
        this.city,
        this.state,
        this.zipCode,
        this.fipsStateAndCountyCode,
        this.hospitalBedCount,
        this.chrchAfflF,
        this.urbanLocationF,
        this.childrenHospitalF,
        this.membCouncTeachHospsF,
        this.medicareProviderNumber,
        this.county,
        this.hospitalBedSize,
        this.updatedDt});

  Hospitals.fromJson(Map<String, dynamic> json) {
    hospitalId = json['hospital_id'];
    hospitalOrgId = json['hospital_org_id'];
    ein = json['ein'];
    name = json['name'];
    nameCr = json['name_cr'];
    streetAddress = json['street_address'];
    city = json['city'];
    state = json['state'];
    zipCode = json['zip_code'];
    fipsStateAndCountyCode = json['fips_state_and_county_code'];
    hospitalBedCount = json['hospital_bed_count'];
    chrchAfflF = json['chrch_affl_f'];
    urbanLocationF = json['urban_location_f'];
    childrenHospitalF = json['children_hospital_f'];
    membCouncTeachHospsF = json['memb_counc_teach_hosps_f'];
    medicareProviderNumber = json['medicare_provider_number'];
    county = json['county'];
    hospitalBedSize = json['hospital_bed_size'];
    updatedDt = json['updated_dt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['hospital_id'] = this.hospitalId;
    data['hospital_org_id'] = this.hospitalOrgId;
    data['ein'] = this.ein;
    data['name'] = this.name;
    data['name_cr'] = this.nameCr;
    data['street_address'] = this.streetAddress;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zip_code'] = this.zipCode;
    data['fips_state_and_county_code'] = this.fipsStateAndCountyCode;
    data['hospital_bed_count'] = this.hospitalBedCount;
    data['chrch_affl_f'] = this.chrchAfflF;
    data['urban_location_f'] = this.urbanLocationF;
    data['children_hospital_f'] = this.childrenHospitalF;
    data['memb_counc_teach_hosps_f'] = this.membCouncTeachHospsF;
    data['medicare_provider_number'] = this.medicareProviderNumber;
    data['county'] = this.county;
    data['hospital_bed_size'] = this.hospitalBedSize;
    data['updated_dt'] = this.updatedDt;
    return data;
  }
}