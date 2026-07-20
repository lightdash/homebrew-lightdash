class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3420.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.0/lightdash-cli-0.3420.0-macos-arm64.tar.gz"
      sha256 "5bf99abcbd8e0f32ec3a5912e668e84714eb599170b3419857e1967eadafba9f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3420.0/lightdash-cli-0.3420.0-macos-x64.tar.gz"
      sha256 "69a086ba7a60fcf673612e5d65d644f28e9682cb68a6ad0dbfd018455895f661"
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
