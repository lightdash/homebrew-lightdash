class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3267.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3267.0/lightdash-cli-0.3267.0-macos-arm64.tar.gz"
      sha256 "335e97f41dedbd7519afd44beb2f65ff94c4abfeeced5525bfc01ecb60b9febd"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3267.0/lightdash-cli-0.3267.0-macos-x64.tar.gz"
      sha256 "89ac3a86ac4b9d6121005c9060ad682cdd490fc5d58fb74fe83b4e86b1edab76"
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
