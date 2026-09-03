class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.108.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.108.0/lightdash-cli-2.108.0-macos-arm64.tar.gz"
      sha256 "cd70c3d24e70488482e7e47f666ccfe9d19e5a0f0016be04698756f75987022f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.108.0/lightdash-cli-2.108.0-macos-x64.tar.gz"
      sha256 "93e51f70c0032c7ae06bf0a023ad03b2e5eb4d7bde2cacc0345ecf853f821814"
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
