class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3140.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3140.0/lightdash-cli-0.3140.0-macos-arm64.tar.gz"
      sha256 "7c4336a3828750b622ae98018728481a9bc56368c73d553bdf740dc9c98129ae"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3140.0/lightdash-cli-0.3140.0-macos-x64.tar.gz"
      sha256 "20fc015da1703b881b9d308e89d37b1af97ba55a58fb32ba327684684baa0915"
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
