class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2485.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2485.1/lightdash-cli-0.2485.1-macos-arm64.tar.gz"
      sha256 "66cae60c0a41e99ae836901b454359c10bc28c8b00299d352e451095ab5917f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2485.1/lightdash-cli-0.2485.1-macos-x64.tar.gz"
      sha256 "a89131b4c8fef812e72cca7970386db39723799392fb8401edaa61adf9b0e0f9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
