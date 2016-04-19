class zaydeploy::odoo::get_repository
{
##############################################
# Server - OCB

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/server/OCB":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'http://github.com/OCA/OCB.git',
}

##############################################
# l10n-brazil

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil/banking":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/odoo-brazil/odoo-brazil-banking.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil/commission":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/odoo-brazil/odoo-brazil-commission.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil/eletronic-documents":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/odoo-brazil/odoo-brazil-eletronic-documents.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil/hr":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/odoo-brazil/odoo-brazil-hr.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil/l10n-brazil":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/odoo-brazil/l10n-brazil.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil/PySPED":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/odoo-brazil/PySPED.git',
}


##############################################
# l10n-brazil-partners

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil-partners/trust-addons":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/Trust-Code/trust-addons.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/l10n-brazil-partners/zay_examples":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/ztbucardi/odoo_addons_examples.git',
}



##############################################
# oca

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/account-fiscal-rule":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/account-fiscal-rule.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/account-payment":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/account-payment.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/bank-payment":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/bank-payment.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/bank-statement-import":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/bank-statement-import.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/bank-statement-reconcile":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/bank-statement-reconcile.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/commission":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/commission.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/contract":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/contract.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/crm":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/crm.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/department":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/department.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/event":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/event.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/margin-analysis":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/margin-analysis.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/partner-contact":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/partner-contact.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/pos":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/pos.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/product-attribute":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/product-attribute.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/project":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/project.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/reporting-engine":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/reporting-engine.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/sale-workflow":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/sale-workflow.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/server-tools":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/server-tools.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/social":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/social.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/stock-logistics-barcode":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/stock-logistics-barcode.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/web":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/web.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/oca/website":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/OCA/website.git',
}

##############################################
# oca

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/others/ingadhoc-addons":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/ingadhoc/odoo-addons.git',
}

vcsrepo { "$zaydeploy::odoo::app_path/volumes/odoo/addons/others/yelizariev-addons":
  ensure   => present,
  provider => git,
  revision => '8.0',
  source   => 'https://github.com/yelizariev/addons-yelizariev.git',
}

}
