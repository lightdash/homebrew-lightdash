class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3434.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3434.0/lightdash-cli-0.3434.0-macos-arm64.tar.gz"
      sha256 "6e6daa4d003ccc3e300e11f94c861b5fba4a769f32e8148f909cb62a82993825"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3434.0/lightdash-cli-0.3434.0-macos-x64.tar.gz"
      sha256 "66ecbe441ed33e55b294040ffbf5cd8d54d5bc9d6c2e40f5dc2a36d44add0ef9"
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
