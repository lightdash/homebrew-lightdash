class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2307.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2307.0/lightdash-cli-0.2307.0-macos-arm64.tar.gz"
      sha256 "dad17b38dc468881f46bb0b17327ccb4a589f35b138698f7cff64af93847e705"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2307.0/lightdash-cli-0.2307.0-macos-x64.tar.gz"
      sha256 "9ab09a2b72c9c6f2c8e18d4d5ff6875dbccc44039472f247a473140c35990bee"
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
