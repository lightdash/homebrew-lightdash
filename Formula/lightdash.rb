class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3088.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3088.0/lightdash-cli-0.3088.0-macos-arm64.tar.gz"
      sha256 "ce23a59b88b568c0acd9e7dd591e93246f5a4697f6f7deec7829eb59374bc409"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3088.0/lightdash-cli-0.3088.0-macos-x64.tar.gz"
      sha256 "9358a22c5d37e5cbb1ea306103a88ced674073e845899bae789f430a0a0dfbdf"
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
