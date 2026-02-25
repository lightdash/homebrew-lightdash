class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2524.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2524.0/lightdash-cli-0.2524.0-macos-arm64.tar.gz"
      sha256 "e952451caf6d3b8308b047011f2982538d574a1b24ca778d118baadf78d7bb44"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2524.0/lightdash-cli-0.2524.0-macos-x64.tar.gz"
      sha256 "e6aa1d3af63a346b78c004948988a3a2fd83de5475592dee752e9e49ef72be25"
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
