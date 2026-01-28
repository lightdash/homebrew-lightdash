class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2389.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.0/lightdash-cli-0.2389.0-macos-arm64.tar.gz"
      sha256 "a89788bca2bbaec7df9a4859757cddaf21c6f702952628b073196a6c37b9398a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2389.0/lightdash-cli-0.2389.0-macos-x64.tar.gz"
      sha256 "e97c4b845ee4560a2310ac9af6b6befb28cc1d88ec906e5b1b989985460043ef"
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
