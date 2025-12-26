class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2282.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.2/lightdash-cli-0.2282.2-macos-arm64.tar.gz"
      sha256 "97dac230fb54c65ad88cbb63424ee32abca758d9a5737ccee8901884a7383cda"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2282.2/lightdash-cli-0.2282.2-macos-x64.tar.gz"
      sha256 "51ee50cca3107c41fc876239801e40171adeb917eb49c4f0a53383571b1b4ce2"
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
