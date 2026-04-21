class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2771.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2771.0/lightdash-cli-0.2771.0-macos-arm64.tar.gz"
      sha256 "5a0472c4adb80a03b67c3eea2b68470f42a38408d0cdb3f5c8475d2e614b2819"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2771.0/lightdash-cli-0.2771.0-macos-x64.tar.gz"
      sha256 "5dc01da74e4571dd396a5ccdb20d7a963f330f211417ba6105a6a2f9558b7614"
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
