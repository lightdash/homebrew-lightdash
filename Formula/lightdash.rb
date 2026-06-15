class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3161.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3161.0/lightdash-cli-0.3161.0-macos-arm64.tar.gz"
      sha256 "98796885ae77de05de8b6d337af4017b34467df7fc6986cab63e811ca4ba31e0"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3161.0/lightdash-cli-0.3161.0-macos-x64.tar.gz"
      sha256 "7f602531730dc67b0dd8cf161093b33f7ce200d1217fdf5e3e23bcee28ab2ca7"
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
