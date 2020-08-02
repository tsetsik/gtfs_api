require 'rails_helper'

RSpec.describe ImportService do
  let(:model) { class_double('Stop', name: 'Stop', create: true) }
  
  describe '#import' do
    subject { described_class.new(fileUrl: fileUrl, model: model).import }
    
    context 'with valid file' do
      let(:fileUrl) { File.expand_path('./spec/fixtures/valid_gtfs.zip') }

      it 'returns true' do
        is_expected.to eq true
      end

      it 'calls create message on the model' do
        expect(model).to receive(:create).once
        subject
      end
    end

    context 'with missing file' do
      let(:fileUrl) { File.expand_path('./spec/fixtures/missing_files.zip') }

      it 'returns true' do
        is_expected.to eq false
      end

      it 'will not call create' do
        expect(model).not_to receive(:create)
        subject
      end
    end
  end
end
