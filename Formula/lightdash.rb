class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3117.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3117.0/lightdash-cli-0.3117.0-macos-arm64.tar.gz"
      sha256 "ae341357def09df97508ad60e82350eb2a228bce6fde358733c56e85eed94a7e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3117.0/lightdash-cli-0.3117.0-macos-x64.tar.gz"
      sha256 "eb792e0d97d953e0fc029dcb1d0f9ff9da1af1fcef1230be29f769bfc1a4b56b"
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
