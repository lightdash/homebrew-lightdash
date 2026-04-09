class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2745.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2745.0/lightdash-cli-0.2745.0-macos-arm64.tar.gz"
      sha256 "05243616944da6a575b6ee5595ff209b7502f94b35675bfc2d6e10e01bdaa2bc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2745.0/lightdash-cli-0.2745.0-macos-x64.tar.gz"
      sha256 "7247b410d38940dfbc1aaed70b61244d220895ba54a95b4b9df5fa7e96a7f5b5"
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
