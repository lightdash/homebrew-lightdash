class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.294.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.0/lightdash-cli-3.294.0-macos-arm64.tar.gz"
      sha256 "7d73cf9f2a1871d6a1c5fefab89e6880fc2580bee9ff3d456806b5d19e6e5614"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.294.0/lightdash-cli-3.294.0-macos-x64.tar.gz"
      sha256 "104f71174ade82f315ae10470831f9fbd84e5d81a0dfae9a8aa818f98233ec0d"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.294.0/lightdash-cli-3.294.0-linux-x64.tar.gz"
    sha256 "45e71caccfc942c70eecec60ac1d0cb0d4ac10b4dcd8473b531987b41107dba1"

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
