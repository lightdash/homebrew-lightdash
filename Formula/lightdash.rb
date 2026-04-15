class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2761.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.1/lightdash-cli-0.2761.1-macos-arm64.tar.gz"
      sha256 "491bac194f1dbbfb288cb0f93483d9f648c44869b081f559f08c61f28797c3a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2761.1/lightdash-cli-0.2761.1-macos-x64.tar.gz"
      sha256 "0307692fac5965f07d077d0f435170515b2a5d997c0740f19708c67c68c2e0db"
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
