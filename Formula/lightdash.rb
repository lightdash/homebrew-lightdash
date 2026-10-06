class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.437.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.437.0/lightdash-cli-2.437.0-macos-arm64.tar.gz"
      sha256 "0e91d127bcacbbddeff2236a8f1fe297879a9394a92a6338848348e002d9fae4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.437.0/lightdash-cli-2.437.0-macos-x64.tar.gz"
      sha256 "b79b8ae657c630c2fae9a4c070da27b444111ae4efb0f3e9fe741ecdfbfea36d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.437.0/lightdash-cli-2.437.0-linux-x64.tar.gz"
    sha256 "24e4b40a37c4243e870f74543447c704ee19be748c68a474098702822435e96d"

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
