class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2370.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2370.2/lightdash-cli-0.2370.2-macos-arm64.tar.gz"
      sha256 "57d3835f6e6f822c1a7cff508932c0cadc0e29c1facbd7714beb0c92160bb01d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2370.2/lightdash-cli-0.2370.2-macos-x64.tar.gz"
      sha256 "7756b0ae0feabf43ac00e34e4a21c081d946089d084b0b749765670216e9f305"
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
