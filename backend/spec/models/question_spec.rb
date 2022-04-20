require 'rails_helper'

RSpec.describe Question, :type => :model do
    describe '.validation' do
        context 'when all attributes is valid' do
            before { question.create!(subject:'Cálculo', cclass:'mat123457', evaluation:'Questionário de Satisafação', id: '01', text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_question.new(subject:'Álgebra', cclass:'mat123456', evaluation:'Questionário de Satisafação', id: '02', text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            it {expect(question).to be_valid}
          end
      
          context 'when id is not unique' do
            before { question.create!(subject:'Cálculo', cclass:'mat123457', evaluation:'Questionário de Satisafação', id: '01', text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_question.new(subject:'Cálculo', cclass:'mat123456', evaluation:'Questionário de Satisafação', id: '01', text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            it {expect(question).to be_invalid}
          end
      
          context 'when evaluation is not unique' do
            before { question.create!(subject:'Cálculo', cclass:'mat123457', evaluation:'Questionário de Satisafação', id: '01', text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_question.new(subject:'Cálculo', cclass:'mat123456', evaluation:'Questionário de Satisafação', id: '01', text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            it {expect(question).to be_invalid}
          end
      
          context 'when name is null' do
            subject = described_class.new(code: nil, name: 'Cálculo')
            it {expect(subject).to be_invalid}
          end
      
          context 'when code is null' do
            subject = described_class.new(code: 'mat123456', name: nil)
            it {expect(subject).to be_invalid}
          end
    end
end