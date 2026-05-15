class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2956.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2956.0/lightdash-cli-0.2956.0-macos-arm64.tar.gz"
      sha256 "08f47ec72654cc76d8e76ce212ef30628d85da9148e0c1ddf3c951a469398a34"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2956.0/lightdash-cli-0.2956.0-macos-x64.tar.gz"
      sha256 "6d7fbdf87f7a9a11d35c71a47f294ad16305400dee9a6fe52c0c9982697980e1"
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
