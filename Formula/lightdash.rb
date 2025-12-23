class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2270.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.13/lightdash-cli-0.2270.13-macos-arm64.tar.gz"
      sha256 "f679c7d8c12038f8606f80747f672a0f55f35571b116637de064ceb14bf9526b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2270.13/lightdash-cli-0.2270.13-macos-x64.tar.gz"
      sha256 "27cbfc708b74c9dd13011673a4d784dd210dff8bcad1c22184fef32bb903c6ea"
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
