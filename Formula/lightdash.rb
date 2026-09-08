class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.153.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.153.0/lightdash-cli-2.153.0-macos-arm64.tar.gz"
      sha256 "42ae694a941263d07b85678cbf9b8a68f5f793d6f2dff92cd5bd45da0feac97a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.153.0/lightdash-cli-2.153.0-macos-x64.tar.gz"
      sha256 "cb21b588c75e274a725e9f01649f127bbc90c8f0a7916367030dcb8ae9eeae32"
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
