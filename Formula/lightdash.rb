class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.117.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.117.0/lightdash-cli-1.117.0-macos-arm64.tar.gz"
      sha256 "1bb01221563ea0fbe5139e153e609ed7a515aa3ea21fc014337d988b12a54068"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.117.0/lightdash-cli-1.117.0-macos-x64.tar.gz"
      sha256 "3a517cc33fe1eb01554eb5aa862db1c2a17325a4f0ec2eea0ced4d847c082e61"
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
