class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3486.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3486.1/lightdash-cli-0.3486.1-macos-arm64.tar.gz"
      sha256 "4da4d0a055a3457d533250df63ae82c7c90aae7323000b41f9b6b9477ead9004"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3486.1/lightdash-cli-0.3486.1-macos-x64.tar.gz"
      sha256 "76c5756dc4f0f83c73467ab5aeba8be4de59aad78593b371e25b2f653bd192d1"
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
