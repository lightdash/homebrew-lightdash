class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.162.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.162.0/lightdash-cli-3.162.0-macos-arm64.tar.gz"
      sha256 "ebdc10a88d8f029285048f888042c36195e9598330c2e7e8412054a8e457fc84"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.162.0/lightdash-cli-3.162.0-macos-x64.tar.gz"
      sha256 "53506a8c43924a8090086682b2bfe33d43feeca6ba4a69544edc47605174a2eb"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.162.0/lightdash-cli-3.162.0-linux-x64.tar.gz"
    sha256 "1b8427597ab6b7bce2b58665145ed66f24034963257f707ee56679c7e347ca1b"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
