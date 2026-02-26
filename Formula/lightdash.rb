class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2532.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2532.0/lightdash-cli-0.2532.0-macos-arm64.tar.gz"
      sha256 "f2bb79cf5457590dc8bd2c8b3f94404ee8ae907baa217ff4dedabca67a5a9836"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2532.0/lightdash-cli-0.2532.0-macos-x64.tar.gz"
      sha256 "8127385a1217678ff8287a27f91c9768097a61cb4d575603cdd9bdaf7c27a8df"
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
