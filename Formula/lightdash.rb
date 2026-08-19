class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.208.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.208.0/lightdash-cli-1.208.0-macos-arm64.tar.gz"
      sha256 "430adab5bbdcacd567f342f26cca9dc72a9265f9344772156956db4af0bde445"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.208.0/lightdash-cli-1.208.0-macos-x64.tar.gz"
      sha256 "ce607d87d3667b0405543c60c5f4a6fe382d165e5b341ab10835808b8ec525cf"
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
