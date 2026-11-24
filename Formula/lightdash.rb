class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.380.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.380.0/lightdash-cli-3.380.0-macos-arm64.tar.gz"
      sha256 "0095c73761b14069be6425e376109ab5690f513d5910124b6ec4ed693afc057f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.380.0/lightdash-cli-3.380.0-macos-x64.tar.gz"
      sha256 "98de9566c8dda5e09003bdb62c8f89ef13dd9f0afcbd1fb83d9069a99aa13a6a"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.380.0/lightdash-cli-3.380.0-linux-x64.tar.gz"
    sha256 "1d910f79019794dccfd6ea07028d9134e2cc3bf1e193429e8e9dcd198221953d"

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
