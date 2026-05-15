class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2955.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2955.1/lightdash-cli-0.2955.1-macos-arm64.tar.gz"
      sha256 "c98775139acb2b459978153ca77320a6fbaaaf4ed190b7dc59e1dcabff8a3085"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2955.1/lightdash-cli-0.2955.1-macos-x64.tar.gz"
      sha256 "6db8981b1a53f0af4894afce492d877f68c877377aca2068f8a87547011a9514"
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
