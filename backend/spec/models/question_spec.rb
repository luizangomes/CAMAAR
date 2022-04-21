require 'rails_helper'
require 'spec_helper'

RSpec.describe Question, :type => :model do

    describe '.validation' do

        context 'when all attributes is valid' do
            before { described_class.create!(subject:'Cálculo', cclasses_id:'mat123457', evaluations_id:'Questionário de Satisfação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_class.new(subject:'Álgebra', cclasses_id:'mat123456', evaluations_id:'Questionário de Satisfação', code: 02, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha')
            it {expect(question).to be_valid}
          end
      
          context 'when code is not unique' do
            before { described_class.create!(subject:'Cálculo', cclasses_id:'mat123457', evaluations_id:'Questionário de Satisfação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_class.new(subject:'Cálculo', cclasses_id:'mat123456', evaluations_id:'Questionário de Satisfação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha')
            it {expect(question).to be_invalid}
          end
      
          context 'when evaluation is not unique' do
            before { described_class.create!(subject:'Cálculo', cclasses_id:'mat123457', evaluations_id:'Questionário de Satisfação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_class.new(subject:'Álgebra', cclasses_id:'mat123455', evaluations_id:'Questionário de Satisfação', code: 03, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha')
            it {expect(question).to be_invalid}
          end
      
          context 'when cclasses_id is not unique' do
            before { described_class.create!(subject:'Cálculo', cclasses_id:'mat123457', evaluations_id:'Questionário de Satisafação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') }
            question = described_class.new(subject:'Cálculo', cclasses_id:'mat123456', evaluations_id:'Questionário de Satisafação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha')
            it {expect(question).to be_invalid}
          end

          context 'when cclass is null' do
            question = described_class.new(subject:'Cálculo', cclasses_id: nil, evaluations_id:'Questionário de Satisafação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha') 
            it {expect(question).to be_invalid}
          end

          context 'when evaluation is null' do
            question = described_class.new(subject:'Cálculo', cclasses_id: 'mat123457', evaluations_id:'Questionário de Satisafação', code: 01, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha')
            it {expect(question).to be_invalid}
          end

          context 'when code is null' do
            question = described_class.new(subject:'Cálculo', cclasses_id: 'mat123457', evaluations_id:'Questionário de Satisafação', code: nil, text:'Você separa tempo além das aulas para estudar?', tipo:'Múltipla Escolha')
            it {expect(question).to be_invalid}
          end
    end
end