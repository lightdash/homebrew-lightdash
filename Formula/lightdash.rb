class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.33.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.33.1/lightdash-cli-2.33.1-macos-arm64.tar.gz"
      sha256 "52183913019294e9815159e06352f0b516ad746f3d0802b0dc180778eff50e6d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.33.1/lightdash-cli-2.33.1-macos-x64.tar.gz"
      sha256 "bb6a214d7bb832069abe0576b5eb0d3b93667a6c918217ab0c497a5a1202520f"
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
