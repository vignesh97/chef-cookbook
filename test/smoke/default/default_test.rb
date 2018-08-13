unless os.windows?
  describe user('root') do
    it { should exist }
  end
end
