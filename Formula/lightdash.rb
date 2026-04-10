class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2751.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2751.1/lightdash-cli-0.2751.1-macos-arm64.tar.gz"
      sha256 "f09ee20fa83907e33575d441a4e402e8098a55e0a4965a505003ed294264ac7b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2751.1/lightdash-cli-0.2751.1-macos-x64.tar.gz"
      sha256 "470ac4718b1a05f8433c560d9623a77c31b0792aa3ca1acfd9d2c042937f1255"
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
