class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3194.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3194.0/lightdash-cli-0.3194.0-macos-arm64.tar.gz"
      sha256 "06f308a4a7285008945f71d062c869447ed1533459a28ecba869dc70fa5a40c2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3194.0/lightdash-cli-0.3194.0-macos-x64.tar.gz"
      sha256 "0554da86987d52195fca3ff9aefb30910dc14b939bf1ae160f9be0b630b15bcc"
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
