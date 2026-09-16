class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.242.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.1/lightdash-cli-2.242.1-macos-arm64.tar.gz"
      sha256 "0f4e9b498724048d2cfd1faf52bafa07166aafa1df6e7de8457294a96909af32"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.242.1/lightdash-cli-2.242.1-macos-x64.tar.gz"
      sha256 "932153391dba8c25f5126c6e32fe69da56ff36fd480ac25eac004ac40a035a06"
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
