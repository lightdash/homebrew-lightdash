class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3400.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3400.0/lightdash-cli-0.3400.0-macos-arm64.tar.gz"
      sha256 "f0ec170b24051bcdf1e7e3fd1a6b17f9073725bb25272d9c33b2fc92edb8dfb5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3400.0/lightdash-cli-0.3400.0-macos-x64.tar.gz"
      sha256 "87d4eb062025f6a9832ac98928ced9b07695afb295e33dc7e49c157d1eb8f024"
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
