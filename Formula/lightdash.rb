class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2592.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.4/lightdash-cli-0.2592.4-macos-arm64.tar.gz"
      sha256 "698fa5882f5fab41fe7052305fa5b5cc66e3d0751bfaf0f9da19a9aa1e864adc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2592.4/lightdash-cli-0.2592.4-macos-x64.tar.gz"
      sha256 "f9f933de3d2ce4fff1b3c956ebe4eceee218e7b7b5573a0ff35514f6455acacf"
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
