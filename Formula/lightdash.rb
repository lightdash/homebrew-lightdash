class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2397.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2397.1/lightdash-cli-0.2397.1-macos-arm64.tar.gz"
      sha256 "0d9328dd5a4a5b0e232261d7a981ebcca8530e316cee66e507c1327ac43e19e9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2397.1/lightdash-cli-0.2397.1-macos-x64.tar.gz"
      sha256 "95462bb10be7f40058169bd1efa0ce3d83cde502a63a6129025abcd2ebe9e6d4"
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
