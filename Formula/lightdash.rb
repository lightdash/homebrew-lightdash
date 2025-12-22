class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2269.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.4/lightdash-cli-0.2269.4-macos-arm64.tar.gz"
      sha256 "da19ccb2e93cc4706c82c1cbd2932cef6322eb2542a8323292354851773565a9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2269.4/lightdash-cli-0.2269.4-macos-x64.tar.gz"
      sha256 "fc4a107207287d18f7d67d01e11056eae856dec801268006926a5975825f5f7c"
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
