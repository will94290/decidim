# frozen_string_literal: true

require "spec_helper"

module Decidim
  describe FeaturePathHelper do
    let(:participatory_process) { create(:participatory_process, id: 42) }

    let(:feature) do
      create(
        :feature,
        name: { en: "Meetings" },
        participatory_space: participatory_process
      )
    end

    describe "main_feature_path" do
      it "resolves the root path for the feature" do
        expect(helper.main_feature_path(feature)).to eq("/processes/42/meetings/")
      end
    end

    describe "manage_feature_path" do
      it "resolves the admin root path for the feature" do
        expect(helper.manage_feature_path(feature)).to \
          eq("/admin/participatory_processes/42/meetings/manage/")
      end
    end
  end
end
