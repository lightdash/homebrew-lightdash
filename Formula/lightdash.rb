class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2557.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2557.0/lightdash-cli-0.2557.0-macos-arm64.tar.gz"
      sha256 "b6251ea6b8b4a28c7cd9136bd261c3721ae7b22b83c9d9860a3ffc2ff1ac9988"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2557.0/lightdash-cli-0.2557.0-macos-x64.tar.gz"
      sha256 "760cda96919452543447dcf70053b670ba39442b9967679186fa10d1d1b2b3ac"
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
