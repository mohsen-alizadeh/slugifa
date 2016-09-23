require 'spec_helper'

describe String do
  it 'replaces all spaces with hyphen' do
    expect('mohsen alizadeh is here'.slugifa).to eq 'mohsen-alizadeh-is-here'
  end

  it 'sees multi spaces as one space' do
    expect('mohsen   alizadeh'.slugifa).to eq 'mohsen-alizadeh'
  end

  it 'removes multi hyphens' do
    expect('mohsen---- alizadeh'.slugifa).to eq 'mohsen-alizadeh'
  end

  it 'converts English alphabets to lower case' do
    expect('MOHSEN Alizadeh'.slugifa).to eq 'mohsen-alizadeh'
  end

  it 'ignores non English|Persian characters' do
    'mohsen '
  end

  it 'support persian characters' do
    expect('میزان آنلاین'.slugifa).to eq 'میزان-آنلاین'
  end
end
