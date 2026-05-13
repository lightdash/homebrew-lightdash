class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2925.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.3/lightdash-cli-0.2925.3-macos-arm64.tar.gz"
      sha256 "10435275d98598f3ee16a2637757c8e25a2ee6f92f1a1b3738cb0014dd0e8f0e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2925.3/lightdash-cli-0.2925.3-macos-x64.tar.gz"
      sha256 "a0f0d6794cd1214442f53a23ba3070c72c6f6c33ff17245fe6056c05b8327571"
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
