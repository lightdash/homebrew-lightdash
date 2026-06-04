class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3092.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3092.0/lightdash-cli-0.3092.0-macos-arm64.tar.gz"
      sha256 "861920ea60dacd51f6c8775bb777ed65eab96a36ef4dbca528c83ada3ea2a836"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3092.0/lightdash-cli-0.3092.0-macos-x64.tar.gz"
      sha256 "56500ce81b564ae443d9cf188d03ad59b6c464fa23d70cb971033228d2d7fd9f"
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
