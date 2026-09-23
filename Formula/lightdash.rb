class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.302.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.302.1/lightdash-cli-2.302.1-macos-arm64.tar.gz"
      sha256 "cdb9b2da56cede7a84055b0973d07a9b3d805a48a59e40bad33aa428c39e1268"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.302.1/lightdash-cli-2.302.1-macos-x64.tar.gz"
      sha256 "68d34a3aced193067ebf697ded2605f50c90e31e191646d62f7e0d73392b8607"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.302.1/lightdash-cli-2.302.1-linux-x64.tar.gz"
    sha256 "22bb0ce41a37dcc4f8fa2a96801b305852b78ba2a401e3f6aee5d377d87e663e"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
