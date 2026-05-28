class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3041.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3041.0/lightdash-cli-0.3041.0-macos-arm64.tar.gz"
      sha256 "1395fba354042cc08cd78252849d34acd028ced0fe737832e05eddab1f214aa7"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3041.0/lightdash-cli-0.3041.0-macos-x64.tar.gz"
      sha256 "d13145a5bdd88a9f00141c87445bf856e3e62219aa8379dc0e0ab732df6c87c4"
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
