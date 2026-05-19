class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2977.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2977.0/lightdash-cli-0.2977.0-macos-arm64.tar.gz"
      sha256 "4af409b3f0b2ef0e77a963cf39d5aa40806365d6e5a5ee065b869d899c12ffc2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2977.0/lightdash-cli-0.2977.0-macos-x64.tar.gz"
      sha256 "e704ef2a6e8f015e35aa30d4104a16f833fac2dbb268ba739211f4e88bdce4a3"
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
