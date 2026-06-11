class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3142.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3142.0/lightdash-cli-0.3142.0-macos-arm64.tar.gz"
      sha256 "38ca86df53059489a28379e754f8041780e3ff29ae856c178fd542cd93175ded"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3142.0/lightdash-cli-0.3142.0-macos-x64.tar.gz"
      sha256 "f0619b33936ba76d3640fa069b9bffb087c61bfdb9f65f66dff6106aba5706ad"
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
